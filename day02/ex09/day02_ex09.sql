with possible_orders
as (select * from person_order
    join person on person.id = person_order.person_id
    join menu on menu.id = person_order.menu_id)
    
select name from possible_orders
where pizza_name = 'pepperoni pizza' and gender = 'female'
INTERSECT
select name from possible_orders
where pizza_name = 'cheese pizza' and gender = 'female'
order by name;