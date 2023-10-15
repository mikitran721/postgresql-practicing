-- inner join
select s.coffeeshop_name, l.city, l.country
from shops s
inner join location l
on s.city_id = l.city_id

-- right join
select s.coffeeshop_name,l.city,l.country
from shops s
right join location l
on s.city_id = l.city_id

-- delete row
delete from location where city_id =4;