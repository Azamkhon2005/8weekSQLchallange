-- What is the percentage of sales by demographic for each year in the dataset?
    
select demographic,t1.calendar_year, sales_demographic, total,
	round(sales_demographic/total*100,2 ) as percentage from 
(select demographic,calendar_year,sum(sales) as sales_demographic from clean_weekly_sales
	group by demographic,calendar_year) as t1
left join (select calendar_year,sum(sales) as total from clean_weekly_sales
		group by calendar_year) as t2 using(calendar_year)
		order by 2 asc,percentage asc