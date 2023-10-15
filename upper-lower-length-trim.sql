select
    first_name,
    upper(first_name) as first_name_upper,
    last_name,
    lower(last_name) as last_name_lower,
    email,
    length(email) as email_length,
    length(trim('   hello    ')) as hello_trimmed
from employees;

