SELECT menu.id as object_id,
       menu.pizza_name as object_name from menu
union
SELECT person.id, person.name from person
order by object_id, object_name;