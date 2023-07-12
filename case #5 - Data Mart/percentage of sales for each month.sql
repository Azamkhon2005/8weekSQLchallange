-- What is the percentage of sales for Retail vs Shopify for each month?

select platform,t1.month_number, sales_platform, total,
	round(sales_platform/total*100,2 ) as percentage from 
(select platform,month_number,sum(sales) as sales_platform from clean_weekly_sales
	group by platform, month_number) as t1
left join (select month_number,sum(sales) as total from clean_weekly_sales
		group by month_number) as t2 using(month_number)
		order by 2 asc,percentage asc