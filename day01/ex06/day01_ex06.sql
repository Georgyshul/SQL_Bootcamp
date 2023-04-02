SELECT order_date as action_date, name as person_name
    from person_order join person
    on person_order.person_id = person.id
INTERSECT
SELECT visit_date, name
    from person_visits join person
    on person_visits.person_id = person.id
order by action_date ASC, person_name DESC;