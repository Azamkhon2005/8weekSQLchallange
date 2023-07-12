-- Which age_band and demographic values contribute the most to Retail sales?
select demographic, age_band, sum(sales) as total,
	row_number() over(order by sum(sales) desc) as rating from clean_weekly_sales
	group by demographic, age_band