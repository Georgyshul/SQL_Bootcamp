select name from v_persons_male
UNION
select name from v_persons_female
order by name;