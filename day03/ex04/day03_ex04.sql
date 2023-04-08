with male_orders
as (select distinct pizzeria.name from person_order
    join person on person.id = person_order.person_id
    join menu on menu.id = person_order.menu_id
    join pizzeria on pizzeria.id = menu.pizzeria_id
    where person.gender = 'male'),
female_orders
as (select distinct pizzeria.name from person_order
    join person on person.id = person_order.person_id
    join menu on menu.id = person_order.menu_id
    join pizzeria on pizzeria.id = menu.pizzeria_id
    where person.gender = 'female')

select only_female.name from 
    (select female_orders.name from female_orders
    except
    select name from male_orders
    order by name) as only_female
UNION
select only_male.name from 
    (select male_orders.name from male_orders
    except
    select name from female_orders
    order by name) as only_male