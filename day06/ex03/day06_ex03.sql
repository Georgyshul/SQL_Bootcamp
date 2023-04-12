create unique index idx_person_discounts_unique on person_discounts (person_id, pizzeria_id)

set enable_seqscan=OFF;

explain analyze
select person_id, pizzeria_id from person_discounts
where person_id = 2;