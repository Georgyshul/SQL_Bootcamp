SELECT order_date as action_date, person_id from person_order
INTERSECT
SELECT visit_date, person_id from person_visits
order by action_date ASC, person_id DESC;