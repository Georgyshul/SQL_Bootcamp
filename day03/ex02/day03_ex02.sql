with not_ordered
as (select menu.id from menu
    EXCEPT
    select menu_id from person_order)

select menu.pizza_name as pizza_name, menu.price, pizzeria.name as pizzeria_name
    from not_ordered
    join menu on not_ordered.id = menu.id
    join pizzeria on pizzeria.id = menu.pizzeria_id
order by pizza_name, price;