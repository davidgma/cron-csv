-- Database = servings.db

.headers off
select '';
select 'Unknown categories:';
select '';
.headers on

drop view if exists v_eaten;
create view v_eaten as
select 
[Day] as eat_date,
[Food Name] as name,
[Group] as meal,
case
	when not [Group] = 'Drinks' then CAST(Amount as decimal)
else 0
end as grams_eaten,	
case
	when [Group] = 'Drinks' then CAST(Amount as decimal)
else 0
end as grams_drunk,
[Carbs (g)] + [Fat (g)] + [Protein (g)] as non_water_grams,
CAST(Amount as decimal) - ([Carbs (g)] + [Fat (g)] + [Protein (g)]) as water_grams,
CAST(Amount as decimal) as grams_total,
[Fiber (g)] as fibre_grams,
[Energy (kcal)] as kcals
from servings
;

select
eat_date, 
round(sum(grams_eaten)*0.00220462,1) as lbs_eaten,
round(sum(grams_drunk)*0.00220462,1) as lbs_drunk,
round(sum(non_water_grams)*0.00220462,1) as lbs_non_water,
round(sum(water_grams)*0.00220462,1) as lbs_water,
round(sum(grams_total)*0.00220462,1) as lbs_total,
round(sum(fibre_grams)*0.00220462,1) as lbs_fibre,
sum(kcals) as kcals 
from v_eaten
group by
eat_date
order by
eat_date desc
;


