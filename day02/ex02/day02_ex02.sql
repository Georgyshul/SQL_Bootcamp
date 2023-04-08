select coalesce(person.name, '-') as person_name,
    dates.visit_date as visit_date,
    coalesce(pizzeria.name, '-') as pizzeria_name
    from person
        full join (select * from person_visits
            where visit_date between '2022-01-01' and '2022-01-03') as dates
            on person.id = dates.person_id
        full join pizzeria on pizzeria.id = dates.pizzeria_id
order by person_name, visit_date, pizzeria_name