create index idx_person_name on person using btree (upper(person.name));

set enable_seqscan = off;
explain analyze select name
from person where upper(name) = 'DENIS';