create or replace view v_price_with_discount(name, pizza_name, price, discount_price)
as  select person.name, m.pizza_name, m.price, (m.price-m.price*0.1)::int
    from person_order
    join menu as m on m.id = person_order.menu_id
    join person on person.id = person_order.person_id

    order by name, pizza_name;