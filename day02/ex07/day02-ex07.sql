with visited_pizzerias
as (select pizzeria_id from person_visits 
    join person on person_visits.person_id = person.id
    where person.name = 'Dmitriy' and person_visits.visit_date = '2022-01-08')
select pizzeria.name
    from visited_pizzerias
    join pizzeria on pizzeria.id = visited_pizzerias.pizzeria_id
    join (select * from menu where price <= 800) as cheap_pizza
    on cheap_pizza.pizzeria_id = pizzeria.id;