insert into person_order(id, person_id, menu_id, order_date)
    select  generate_series((select max(id)+1 from person_order),
            (select max(id)+(select max(id) from person) from person_order)),
            generate_series(1, (select max(id) from person)),
            (select id from menu where pizza_name = 'greek pizza'),
            '2022-02-25';

select * from person_order;