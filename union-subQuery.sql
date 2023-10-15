-- union: return all city & country
select city from location
union
select country from location

-- union: remove duplicate country
select country from location
union
select country from location

-- union all: see all
select country from location
union all
select country from location

-- sub query

select a.employee_id, a.first_name
from (select * from employees where coffeeshop_id in (4,3)) a;

-- basic sub query
select
    first_name,
    last_name,
    (select max(salary) from employees limit 1)
from employees;

-- sub query with where
select *
from employees
where coffeeshop_id in
    (
        select coffeeshop_id
        from shops
        where city_id in
            (select city_id from location)
            where country = 'United States'
    );