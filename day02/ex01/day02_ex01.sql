select days.date::date as missing_date
    from generate_series('01-01-2022', '10-01-2022', interval '1 day') as days
    left join (select pv.visit_date
               from person_visits as pv
               where pv.person_id = 1 or pv.person_id = 2) as visits
    on visits.visit_date = days.date
    where visits.visit_date is null
order by missing_date asc;