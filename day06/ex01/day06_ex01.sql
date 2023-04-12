with discount_data
as  (select person_id,
            menu.pizzeria_id as pizzeria_id,
            case
                when (count(menu.pizzeria_id) = 1) then 10.5
                when (count(menu.pizzeria_id) = 2) then 22
                else 30
            end as discount
        from person_order
        join menu on person_order.menu_id = menu.id
        group by person_id, pizzeria_id
        order by person_id, pizzeria_id)

insert into person_discounts(id, person_id, pizzeria_id, discount)
    select row_number() over(), person_id, pizzeria_id, discount
    from discount_data;

select * from person_discounts;