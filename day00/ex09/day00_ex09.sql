select
	(select p.name from person as p where p.id = pv.person_id) as person_name,
	(select pizz.name from pizzeria as pizz where pizz.id = pv.pizzeria_id) as pizzeria_name
from (select person_id, pizzeria_id from person_visits where
	  visit_date >= '2022-01-07' and visit_date <= '2022-01-09') as pv
order by person_name asc, pizzeria_name desc 
