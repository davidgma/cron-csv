-- Database = servings.db

.headers off
select '';
select 'Unknown categories:';
select '';
.headers on

drop view if exists v_servings;
create view v_servings as
select
case
	when [Food Name] like 'Apple%' then 'Fruit'
	when [Food Name] like 'Strawberries%' then 'Fruit'
	when [Food Name] like 'Lemon Juice%' then 'Fruit'
	when [Food Name] like '%Freshly Frozen Summer Fruits%' then 'Fruit'	
	when [Food Name] like '%Raspberries%' then 'Fruit'	
	when [Food Name] like '%Black Forest Fruits%' then 'Fruit'	
	when [Food Name] like 'Jasmine Tea%' then 'Drinks'
	when [Food Name] like '%Egg shell%' then 'Other'
	when [Food Name] like 'Eggs%' then 'Eggs'
	when [Food Name] like '%Stock%' then 'Stock'
	when [Food Name] like '%tallow%' then 'Fat'
	when [Food Name] like '%Wild Fowl Fat%' then 'Fat'
	when [Food Name] like '%Butter%' then 'Fat'
	when [Food Name] like 'Garlic%' then 'Flavourings'
	when [Food Name] like 'Salt%' then 'Flavourings'
	when [Food Name] like 'Turmeric%' then 'Flavourings'
	when [Food Name] like 'Black Pepper%' then 'Flavourings'
	when [Food Name] like '%Mixed Herbs%' then 'Flavourings'
	when [Food Name] like '%Curry Powder%' then 'Flavourings'
	when [Food Name] like '%Dijon Mustard%' then 'Flavourings'
	when [Food Name] like '%Chili%' then 'Flavourings'
	when [Food Name] like '%Ginger, Ground%' then 'Flavourings'
	when [Food Name] like '%Kefir%' then 'Other'
	when [Food Name] like '%Honey%' then 'Other'
	when [Food Name] like '%Arugula%' then 'Greens'
	when [Food Name] like '%Watercress%' then 'Greens'
	when [Food Name] like '%Collards%' then 'Greens'
	when [Food Name] like '%Broccoli%' then 'Vegetables'
	when [Food Name] like '%Mushrooms%' then 'Vegetables'
	when [Food Name] like '%Onion%' then 'Vegetables'
	when [Food Name] like '%Tomato%' then 'Vegetables'
	when [Food Name] like '%Red Bell%' then 'Vegetables'
	when [Food Name] like '%Leeks%' then 'Vegetables'
	when [Food Name] like '%Cauliflower%' then 'Vegetables'
	when [Food Name] like '%Cabbage%' then 'Vegetables'
	when [Food Name] like '%Carrots%' then 'Root vegetables'
	when [Food Name] like '%Celeriac%' then 'Root vegetables'
	when [Food Name] like '%Celery%' then 'Vegetables'
	when [Food Name] like '%Turnip%' then 'Root vegetables'
	when [Food Name] like '%Beets%' then 'Root vegetables'
	when [Food Name] like '%Oyster%' then 'Fish and Seafood'
	when [Food Name] like '%Mackerel%' then 'Fish and Seafood'
	when [Food Name] like '%Prawns%' then 'Fish and Seafood'
	when [Food Name] like '%Salmon%' then 'Fish and Seafood'
	when [Food Name] like '%Scallops%' then 'Fish and Seafood'
	when [Food Name] like '%Potatoes%' then 'Potatoes'
	when [Food Name] like '%Chicken%' then 'Meat'
	when [Food Name] like '%Lamb%' then 'Meat'
	when [Food Name] like '%blackeyes%' then 'Grains and legumes'
	when [Food Name] like '%Lentils%' then 'Grains and legumes'
	when [Food Name] like '%Peas%' then 'Grains and legumes'
	when [Food Name] like '%Rice%' then 'Grains and legumes'
	when [Food Name] like '%Popcorn%' then 'Grains and legumes'
	when [Food Name] like '%Oatmeal%' then 'Grains and legumes'
	
	else 'Unknown'
end as category,
case
	when [Food Name] like 'Apple%' then CAST(Amount as decimal)
	when [Food Name] like 'Strawberries%' then CAST(Amount as decimal)
	when [Food Name] like 'Lemon Juice%' then CAST(Amount as decimal)
	when [Food Name] like '%Freshly Frozen Summer Fruits%' then CAST(Amount as decimal)
	when [Food Name] like 'Eggs%' then CAST(Amount as decimal)
	when [Food Name] like '%Wild Fowl Fat%' then CAST(Amount as decimal)
	when [Food Name] like 'Garlic%' then CAST(Amount as decimal)
	when [Food Name] like 'Salt%' then CAST(Amount as decimal)
	when [Food Name] like 'Turmeric%' then CAST(Amount as decimal)
	when [Food Name] like 'Black Pepper%' then CAST(Amount as decimal)
	when [Food Name] like '%Mixed Herbs%' then CAST(Amount as decimal)
	when [Food Name] like '%Curry Powder%' then CAST(Amount as decimal)
	when [Food Name] like '%Dijon Mustard%' then CAST(Amount as decimal)
	when [Food Name] like '%Honey%' then CAST(Amount as decimal)
	when [Food Name] like '%Arugula%' then CAST(Amount as decimal)
	when [Food Name] like '%Watercress%' then CAST(Amount as decimal)
	when [Food Name] like '%Collards%' then CAST(Amount as decimal)
	when [Food Name] like '%Broccoli%' then CAST(Amount as decimal)
	when [Food Name] like '%Mushrooms%' then CAST(Amount as decimal)
	when [Food Name] like '%Onion%' then CAST(Amount as decimal)
	when [Food Name] like '%Tomato%' then CAST(Amount as decimal)
	when [Food Name] like '%Red Bell%' then CAST(Amount as decimal)
	when [Food Name] like '%Carrots%' then CAST(Amount as decimal)
	when [Food Name] like '%Celeriac%' then CAST(Amount as decimal)
	when [Food Name] like '%Celery%' then CAST(Amount as decimal)
	when [Food Name] like '%Turnip%' then CAST(Amount as decimal)
	when [Food Name] like '%blackeyes%' then CAST(Amount as decimal)
	when [Food Name] like '%Lentils%' then CAST(Amount as decimal)
	when [Food Name] like '%Peas%' then CAST(Amount as decimal)
	when [Food Name] like '%Rice%' then CAST(Amount as decimal)
	when [Food Name] like '%Cauliflower%' then CAST(Amount as decimal)
	when [Food Name] like '%Chili%' then CAST(Amount as decimal)
	when [Food Name] like '%Popcorn%' then CAST(Amount as decimal)
	when [Food Name] like '%Oyster%' then CAST(Amount as decimal)
	when [Food Name] like '%Ginger%' then CAST(Amount as decimal)
	when [Food Name] like '%Leeks%' then CAST(Amount as decimal)
	when [Food Name] like '%Oatmeal%' then CAST(Amount as decimal)
	when [Food Name] like '%Prawns%' then CAST(Amount as decimal)
	when [Food Name] like '%Salmon%' then CAST(Amount as decimal)
	when [Food Name] like '%Scallops%' then CAST(Amount as decimal)
	when [Food Name] like '%Frozen Summer Fruits%' then CAST(Amount as decimal)
	when [Food Name] like '%Beets%' then CAST(Amount as decimal)
	when [Food Name] like '%Butter%' then CAST(Amount as decimal)
	when [Food Name] like '%Cabbage%' then CAST(Amount as decimal)
	when [Food Name] like '%Raspberries%' then CAST(Amount as decimal)
	when [Food Name] like '%Black Forest Fruits%' then CAST(Amount as decimal)
	
	else 0
end as sains,
case
	when [Food Name] like 'Apple%' then CAST(Amount as decimal)
	when [Food Name] like 'Strawberries%' then CAST(Amount as decimal)
	when [Food Name] like 'Lemon Juice%' then CAST(Amount as decimal)
	when [Food Name] like '%Honey%' then CAST(Amount as decimal)
	when [Food Name] like '%Arugula%' then CAST(Amount as decimal)
	when [Food Name] like '%Broccoli%' then CAST(Amount as decimal)
	when [Food Name] like '%Mushrooms%' then CAST(Amount as decimal)
	when [Food Name] like '%Onion%' then CAST(Amount as decimal)
	when [Food Name] like '%Carrots%' then CAST(Amount as decimal)
	when [Food Name] like '%Celery%' then CAST(Amount as decimal)
	when [Food Name] like '%Cauliflower%' then CAST(Amount as decimal)
	when [Food Name] like 'Garlic%' then CAST(Amount as decimal)
	when [Food Name] like 'Salt%' then CAST(Amount as decimal)
	when [Food Name] like 'Black Pepper%' then CAST(Amount as decimal)
	when [Food Name] like '%Mixed Herbs%' then CAST(Amount as decimal)
	when [Food Name] like '%Curry Powder%' then CAST(Amount as decimal)
	when [Food Name] like '%Dijon Mustard%' then CAST(Amount as decimal)
	when [Food Name] like '%Lentils%' then CAST(Amount as decimal)
	when [Food Name] like '%Rice%' then CAST(Amount as decimal)
	when [Food Name] like '%Chili%' then CAST(Amount as decimal)
	when [Food Name] like '%Leeks%' then CAST(Amount as decimal)
	when [Food Name] like '%Oatmeal%' then CAST(Amount as decimal)
	when [Food Name] like '%Prawns%' then CAST(Amount as decimal)
	when [Food Name] like '%Frozen Summer Fruits%' then CAST(Amount as decimal)
	
	else 0
end as coop,
case
	when [Food Name] like 'Lemon Juice%' then 10
	when [Food Name] like 'Garlic%' then 20
	when [Food Name] like 'Strawberries%' then 30
	when [Food Name] like '%Raspberries%' then 30
	when [Food Name] like '%Onion%' then 40
	when [Food Name] like 'Apple%' then 50
	when [Food Name] like '%Potatoes%' then 60
	when [Food Name] like '%Carrots%' then 70
	when [Food Name] like '%Mushrooms%' then 80
	when [Food Name] like '%Celeriac%' then 90
	when [Food Name] like '%Turnip%' then 90
	when [Food Name] like '%Beets%' then 90
	when [Food Name] like '%Leeks%' then 100
	when [Food Name] like '%Broccoli%' then 100
	when [Food Name] like '%Cauliflower%' then 100
	when [Food Name] like '%Cabbage%' then 100
	when [Food Name] like '%Collards%' then 100
	when [Food Name] like '%Celery%' then 110
	when [Food Name] like '%Arugula%' then 120
	when [Food Name] like '%Watercress%' then 120
	when [Food Name] like '%Tomato%' then 130
	when [Food Name] like '%Red Bell%' then 140
	when [Food Name] like '%Butter%' then 150
	when [Food Name] like '%Kefir%' then 160
	when [Food Name] like '%Chicken%' then 170
	when [Food Name] like '%Lamb%' then 180
	when [Food Name] like '%Oyster%' then 190
	when [Food Name] like '%Honey%' then 200
	when [Food Name] like '%blackeyes%' then 210
	when [Food Name] like '%Lentils%' then 210
	when [Food Name] like '%Peas%' then 210
	when [Food Name] like '%Popcorn%' then 210
	when [Food Name] like '%Rice%' then 220
	when [Food Name] like 'Salt%' then 230
	when [Food Name] like 'Turmeric%' then 230
	when [Food Name] like 'Black Pepper%' then 230
	when [Food Name] like '%Mixed Herbs%' then 230
	when [Food Name] like '%Curry Powder%' then 230
	when [Food Name] like '%Chili%' then 230
	when [Food Name] like '%Ginger, Ground%' then 230
	when [Food Name] like '%Dijon Mustard%' then 240
	when [Food Name] like '%Wild Fowl Fat%' then 250
	when [Food Name] like 'Eggs%' then 260
	when [Food Name] like 'Jasmine Tea%' then 270
	when [Food Name] like '%Oatmeal%' then 280
	when [Food Name] like '%Prawns%' then 290
	when [Food Name] like '%Salmon%' then 290
	when [Food Name] like '%Scallops%' then 290
	when [Food Name] like '%Frozen%' then 290
	when [Food Name] like '%Freshly Frozen Summer Fruits%' then 290	
	
	else 900
end as aisle,
Day as day,
[Food Name] as name,
CAST(Amount as decimal) as grams,
[Energy (kcal)] as kcals
from servings
;

select
name, 
category 
from v_servings
where category = 'Unknown'
group by
name,
category
;

.headers off
select '';
select 'Total foods to be eaten:';
select '';
.headers on

select 
category,
name,
aisle,
sum(grams) as grams,
sum(kcals) as kcals,
sum(coop) as coop,
sum(sains) as sains
from v_servings
where category not in ('Stock')
group by 
category,
name,
aisle
;

.headers off

select 
'total',
' ',
sum(grams) as grams,
sum(kcals) as kcals,
sum(coop) as coop,
sum(sains) as sains
from v_servings
;

.headers on
