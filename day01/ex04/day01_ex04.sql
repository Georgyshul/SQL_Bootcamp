select ord.person_id FROM
    person_order as ord
    where ord.order_date = '2022-01-07'
EXCEPT ALL
select visit.person_id FROM
    person_visits as visit
    where visit.visit_date = '2022-01-07';