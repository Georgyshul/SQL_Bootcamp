with max_id 
    as  (select max(id) from person_visits)

insert into person_visits
    values  ((select max(max)+1 from max_id),
            (select id from person where person.name = 'Denis'),
            (select id from pizzeria where pizzeria.name = 'Dominos'),
            '2022-02-24'),
            ((select max(max)+2 from max_id),
            (select id from person where person.name = 'Irina'),
            (select id from pizzeria where pizzeria.name = 'Dominos'),
            '2022-02-24');

-- select * from person_visits;

-- delete from person_visits where id >= 20;

-- select * from person_visits;