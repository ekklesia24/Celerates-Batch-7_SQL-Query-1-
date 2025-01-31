-- 1. Select all records data_src which came from the journal name 'Food Chemistry'
select *
from data_src ds 
where journal = 'Food Chemistry';

-- 2. Find all the food descriptions (food_des) records for manufacturer Kellogg, Co.
-- (must include punctuation for exact match)
select *
from food_des fd 
where manufacname = 'Kellogg, Co';

-- 3. Find the number of records in data sources (data_src) that were published after year 2000 
--(it is numeric field)
select count(1)
from data_src ds 
where "year" > 2000;

-- 4. Find the number of records in food description table
--that have pro_factor greater than 1.5 and fat_factor less than 5
select count (1) 
from food_des fd 
where pro_factor > 1.5 and fat_factor < 5;

-- 5. Find the record in data source table that is from year 1990 and the journal Cereal Foods World
select *
from data_src ds 
where "year" = 1990 and journal = 'Cereal Foods World';

-- 6. Select the records in nutr_def table (nutrition definitions) that have units of kj of kcal
select *
from nutr_def nd 
where units = 'kj' or units ='kcal';

-- 7. Select all records from data source table (data_src) that where from the year 2000
--or the journal Food Chemistry
select *
from data_src ds 
where "year" >= 2000 or journal = 'Food Chemistry';

-- 8. Find all the records in data sources that where between 1990 and 2000
--and either ‘J. Food Protection’ or ‘Food Chemistry’
select *
from data_src ds 
where ("year" between 1990 and 2000) and (ds.journal in ('J. Food Protection','Food Chemistry'));

-- 9. Use BETWEEN syntax to find number of weight records
--that weight between 50 and 75 grams (gm_wgt)
select count (1)
from weight w 
where gm_wgt between 50 and 75;

-- 10. Select all records from the data source table
--that were published in years 1960, 1970, 1980, 1990 and 2000. Use the IN syntax
select *
from data_src ds 
where "year" in (1960, 1970, 1980, 1990, 2000);