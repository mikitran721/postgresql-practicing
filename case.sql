-- CASE: with group by & for transposing data
-- if pay is less than 50k, then low pay, otherwise high pay
select
    employee_id,
    first_name,
    last_name,
    salary
    CASE
        when salary < 50000 then 'low pay'
        when salary >= 50000 then 'high pay'
        else 'no pay'
    end
from employees
order by salary desc;

-- if pay is less than 20, then low pay; if between 20k-50k inclusive, than medium pay
-- if over 50k, than high pay
select
    employee_id,
    first_name,
    last_name,
    salary
    CASE
        when salary < 20000 then 'low pay'
        when salary between 20000 and 50000 then 'medium pay'
        when salary > 50000 then 'high pay'
        else 'no pay'
    end
from employees
order by salary desc;

-- return the count of employee in each pay category
select a.pay_category, count (*)
from
    (select
        employee_id, first_name,last_name,salary
        CASE
            when salary <20000 then 'low pay'
            when salary between 20000 and 50000 then 'medium pay'
            when salary >50000 then 'high pay'
            else 'no pay'
        end as pay_category
        from employees
        order by salary desc) a
group by a.pay_category;

-- transpose above (rut ngan nested select ben tren)
select
    sum (case when salary <20000) then 1 else 0 end) as low_pay,
    sum (case when salary between 20000 and 50000 then 1 else 0 end) as medium_pay,
    sum (case when salary > 50000 then 1 else 0 end) as high_pay
from employees;
