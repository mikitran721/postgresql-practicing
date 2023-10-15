-- concatenation,, boolean expressions & wildcards

select first_name || ' ' || last_name as full_name from employees

-- boolean expression result
select 
    first_name || ' ' || last_name as full_name,
    (salary <50000) as less_than_50k,
    (salary <50000 and gender ='F') as less_than_50k_female
from employees

-- wildcard: like condition
select
    email,
    (email like '%.com') as dotcom_flag,
    (email like '%.gov') as dotgov_flag
from employees

-- substring, position, coalesce

-- substring: get item from the 5th character
select
    email,
    substring(email from 5)
from employees;

-- position: find the position of '@' in the mail
select
    email,
    position('@' in email)
from employees;

-- union
select
    email,
    substring(email from position('@' in email)+1)
from employees;

--coalesce to fill missing emails with custom value
select
    email,
    coalesce(email,'NO EMAIL PROVIDED')
from employees

-- MIN, MAX, AVG,SUM,COUNT,ROUND
select
    -- salary,
    min(salary) as min_sal,
    max(salary) as max_sal,
    max(salary)-min(salary) as between_sal,
    avg(salary) as avg_sal,
    ROUND(avg(salary),0) -- round average salary to nearest integer,
    SUM(salary),
    COUNT(*) as summary,
    COUNT(email) as count_email,
from employees;

-- group by & having

-- return the number of employees  for each coffeeshop
select
    coffeeshop_id, COUNT(employee_id)
from employees
group by coffeeshop_id;

-- return the total salaries for each coffeeshop
select coffeeshop_id, sum(salary)
from employees
group by coffeeshop_id;

-- return the number of employees, the avg, min, max & total salaries for each coffeeshop
select
    coffeeshop_id,
    count(*) as num_of_emp,
    round(avg(salary),0) as avg_sal,
    min(salary) as min_sal,
    max(salary) as max_sal,
    sum(salary) as total_sal
from employees
group by coffeeshop_id
order by num_of_emp desc;

-- HAVING
-- after group by, return only the coffee.shops with more than 200 employees
select
    coffeeshop_id,
    count(*) as num_of_emp,
    round(avg(salary),0) as avg_sal,
    min(salary) as min_sal,
    max(salary) as max_sal,
    sum(salary) as total_sal
from employees
group by coffeeshop_id
HAVING count(*) > 200
order by num_of_emp desc;

-- after group by, return the coffee.shop with a minimum salary of less than 10k
select
    coffeeshop_id,
    count (*) as num_of_emp,
    min(salary) as min_sal,
    sum(salary) as total_sal
from employees
group by coffeeshop_id
having min(salary) <1000
order by num_of_emp desc;


