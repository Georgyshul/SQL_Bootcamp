create or replace view v_symmetric_union as

with    R(id, person_id, pizzeria_id, visit_date)
        as  (select * from person_visits where visit_date = '2022-01-02'),

        S(id, person_id, pizzeria_id, visit_date)
        as  (select * from person_visits where visit_date = '2022-01-06')

((select person_id from R)
      except
(select person_id from S))

union

((select person_id from S)
      except
(select person_id from R))

order by person_id;