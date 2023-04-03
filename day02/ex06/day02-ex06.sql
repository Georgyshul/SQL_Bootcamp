with orders_d_a
as (
    select person_order.person_id, person_order.menu_id from person_order
    join person on person.id = person_order.person_id
    where name = 'Denis' or name = 'Anna'
)
select menu.pizza_name, pizzeria.name as pizzeria_name
    from orders_d_a join menu on menu.id = orders_d_a.menu_id
    join pizzeria on pizzeria.id = menu.pizzeria_id

order by pizza_name, pizzeria_name;