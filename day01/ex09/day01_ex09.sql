select pizzeria.name from pizzeria
    where pizzeria.id not in (select pizzeria_id from person_visits);

select pizzeria.name from pizzeria
    where not exists (select * from person_visits as pv
                        where pv.pizzeria_id = pizzeria.id);