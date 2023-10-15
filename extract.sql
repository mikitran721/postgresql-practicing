-- extract condition
select
    hire_date,
    extract (year from hire_date) as year,
    extract (month from hire_date) as month,
    extract (day from hire_date) as day
from employees