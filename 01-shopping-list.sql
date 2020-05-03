-- Database = servings.db

.headers off
select '';
select 'Total foods to be eaten:';
select '';
.headers on

select 
[Food Name] as food,
sum(CAST(Amount as decimal)) as amount
from servings
group by food
;
