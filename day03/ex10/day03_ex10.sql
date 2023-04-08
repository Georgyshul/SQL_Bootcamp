with max_id 
    as  (select max(id) from person_order)

insert into person_order
    values  ((select max(max)+1 from max_id),
            (select id from person where person.name = 'Denis'),
            (select id from menu where menu.pizza_name = 'sicilian pizza'),
            '2022-02-24'),

            ((select max(max)+2 from max_id),
            (select id from person where person.name = 'Irina'),
            (select id from menu where menu.pizza_name = 'sicilian pizza'),
            '2022-02-24');

select * from person_order;