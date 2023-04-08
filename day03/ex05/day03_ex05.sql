with visited
        as  (select pizzeria.name as pizzeria_name from person_visits
            join pizzeria on pizzeria.id = person_visits.pizzeria_id
            join person on person.id = person_visits.person_id
            where person.name = 'Andrey'),
    ordered
        as  (select pizzeria.name as pizzeria_name from person_order
            join menu on menu.id = person_order.menu_id
            join pizzeria on pizzeria.id = menu.pizzeria_id
            join person on person.id = person_order.person_id
            where person.name = 'Andrey')

select pizzeria_name from visited
except
select pizzeria_name from ordered

order by pizzeria_name;