create sequence public.seq_person_discounts
start with 1
increment 1;

select setval ('seq_person_discounts', (select max(id) from person_discounts));

alter table person_discounts
alter column id set default nextval('seq_person_discounts');

insert into person_discounts values(default, 1, 2, 30);
select * from person_discounts;

delete from person_discounts where id = (select max(id) from person_discounts)