create or replace view v_generated_dates
as  select generate_series  ('2022-01-01'::timestamp,
                            '2022-01-31'::timestamp,
                            interval '1 day') as generated_date;