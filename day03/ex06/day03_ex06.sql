with pizzas
    as  (select menu.pizza_name, pizzeria.name as pizzeria, menu.price, pizzeria.id from menu
        join pizzeria on pizzeria.id = menu.pizzeria_id)

select pizzas1.pizza_name,
    pizzas1.pizzeria as pizzaria_name1,
    pizzas2.pizzeria as pizzaria_name2,
    pizzas1.price from pizzas as pizzas1
    join pizzas as pizzas2 on pizzas1.pizza_name = pizzas2.pizza_name
where pizzas1.pizzeria !=  pizzas2.pizzeria and pizzas1.price = pizzas2.price and pizzas1.id > pizzas2.id

order by pizza_name asc;