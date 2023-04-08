select distinct person.name from person_order
    join menu on person_order.menu_id = menu.id
    join person on person.id = person_order.person_id
where gender = 'male' and address in ('Samara','Kazan')
    and pizza_name in ('pepperoni pizza','mushroom pizza')
order by name desc;