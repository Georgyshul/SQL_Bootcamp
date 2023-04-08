insert into person_visits
values ((select max(id) from person_visits) + 1,
        (select p.id from person p where p.name = 'Dmitriy'),
        (select pizzeria_id from menu
            where price <= 800
            and pizzeria_id not in
                (select id from mv_dmitriy_visits_and_eats
                join pizzeria on pizzeria.name = mv_dmitriy_visits_and_eats.name)
        limit 1),
        timestamp '2022-01-08');
refresh materialized view mv_dmitriy_visits_and_eats;

select * from mv_dmitriy_visits_and_eats;