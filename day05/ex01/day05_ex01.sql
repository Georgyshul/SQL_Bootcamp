set enable_seqscan = off;
EXPLAIN ANALYZE select menu.pizza_name, pizzeria.name as pizzeria_name
from menu join pizzeria on menu.pizzeria_id = pizzeria.id;