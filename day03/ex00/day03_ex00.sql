with kate_visits
    as (select * from person_visits
        join person on person.id = person_visits.person_id
        where person.name = 'Kate')

select pizza_name, price, pizzeria.name as pizzeria_name, visit_date
    from kate_visits join menu on menu.pizzeria_id = kate_visits.pizzeria_id
    join pizzeria on pizzeria.id = kate_visits.pizzeria_id
    where price between 800 and 1000
order by pizza_name, price, pizzeria.name;