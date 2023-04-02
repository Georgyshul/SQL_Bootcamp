SELECT po.order_date,
       format('%s (age:%s)', p.name, p.age) as person_information
    from person_order as po(order_id, id, menu_id, order_date)
        natural join person as p
order by order_date asc, person_information asc;