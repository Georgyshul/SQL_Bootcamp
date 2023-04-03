with possible_dates(date)
    as (select days.date as date from generate_series('01-01-2022', '10-01-2022', interval '1 day') as days),
    visit_dates(visit_date)
    as (select distinct visit_date from person_visits where person_id = 1 or person_id = 2)

select possible_dates.date as missing_date
    from possible_dates left join visit_dates on possible_dates.date = visit_dates.visit_date
where visit_date is null
order by missing_date asc;