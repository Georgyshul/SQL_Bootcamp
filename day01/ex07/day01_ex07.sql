SELECT po.order_date,
       format('%s (age:%s)', p.name, p.age) as person_information
    from person_order as po join person as p
    on po.person_id = p.id
order by order_date asc, person_information asc;