with orders(id, name, address)
    as (select person.id, name, address
        from person_order
        join person on person_order.person_id = person.id),

    combinations(person_name1, person_name2, common_address)
    as (select orders1.name as person_name1,
            orders2.name as person_name2,
            orders1.address as common_address
        from orders as orders1 join orders as orders2 on orders1.address = orders2.address
        where orders1.id > orders2.id)

select distinct * from combinations
order by person_name1, person_name2, common_address;