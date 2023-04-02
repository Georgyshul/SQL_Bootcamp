SELECT * from
    (select person.name as object_name from person order by name) as people
union all
SELECT * from
    (select menu.pizza_name from menu order by pizza_name) as pizzas;