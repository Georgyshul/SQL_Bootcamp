with pizza(pizzeria_id, pizza_name, price)
    as (select pizzeria_id, pizza_name, price
        from menu where pizza_name = 'pepperoni pizza' or pizza_name = 'mushroom pizza')
select pizza.pizza_name, pizzeria.name as pizzeria_name, pizza.price
    from pizza join pizzeria on pizza.pizzeria_id = pizzeria.id
order by pizza_name asc, pizzeria_name asc