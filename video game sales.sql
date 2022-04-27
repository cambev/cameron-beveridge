
Select*
from dbo.game_sales


--total of video game sales

select count(account_id) as "total_sales"
from dbo.game_sales;


--total revenue from video game sales

select sum(price) as "revenue"
from dbo.game_sales
where 0 not in (price) 


-- data organised by date of ascending 

select * 
from game_sales
order by [date];  


--Round all sale prices to the nearest whole number(25$)

select ceiling(24.99) as "rounded price";


--% of game title sold

select purchase,
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from dbo.game_sales
group by purchase;


--% of digital/analog copies sold

select [bank_name],
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from dbo.game_sales
group by [bank_name];


--frequency of banks used

select [version],
       (count(*) * 1.0 / sum(count(*)) over ()) as ratio
from dbo.game_sales
group by [version];


-- number of copies sold in the first day

SELECT *
FROM dbo.game_sales WHERE [date]
	BETWEEN '2022-02-01' AND ('2022-02-01') 


-- number of copies sold in the first 2 days

SELECT *
FROM dbo.game_sales WHERE [date]
	BETWEEN '2022-02-01' AND ('2022-02-02')
	
--number of copies sold in the first week

SELECT *
FROM dbo.game_sales WHERE [date]
	BETWEEN '2022-02-01' AND ('2022-02-07')


-- number of sales last day of the month of Feb

SELECT *
FROM dbo.game_sales WHERE [date]
	BETWEEN '2022-02-28' AND ('2022-02-28') 


--number of times played in 24 hours

select sum(played_in_24_hours) as "times_played"
from dbo.game_sales
where 0 not in (played_in_24_hours) 


--number of times played in 48 hours

select sum(played_in_48_hours) as "times_played"
from dbo.game_sales
where 0 not in (played_in_48_hours) 