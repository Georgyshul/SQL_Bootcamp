with ordered as (select distinct menu_id from person_order)
select id from menu
EXCEPT
select menu_id from ordered
order by id;