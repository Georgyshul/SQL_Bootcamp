with visited_by_men
as (select distinct pizzeria.name from person_visits
    join pizzeria on pizzeria.id = person_visits.pizzeria_id
    join person on person_visits.person_id = person.id
    where person.gender = 'male'),
visited_by_women
as (select distinct pizzeria.name from person_visits
    join pizzeria on pizzeria.id = person_visits.pizzeria_id
    join person on person_visits.person_id = person.id
    where person.gender = 'female')

select name as pizzeria_name from visited_by_women
    except all
    select name from visited_by_men
union all
select name as pizzeria_name from visited_by_men
    except all
    select name from visited_by_women
order by pizzeria_name;
