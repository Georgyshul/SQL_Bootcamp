select  person.name,
        menu.pizza_name,
        menu.price,
        (menu.price*(1-person_discounts.discount/100))::bigint as discount_price,
        pizzeria.name as pizzeria_name
    from person_order
    join person on person.id = person_order.person_id
    join menu on menu.id = person_order.menu_id
    join person_discounts on person_discounts.person_id = person_order.person_id and person_discounts.pizzeria_id = menu.pizzeria_id
    join pizzeria on menu.pizzeria_id = pizzeria.id
    order by name, pizza_name;