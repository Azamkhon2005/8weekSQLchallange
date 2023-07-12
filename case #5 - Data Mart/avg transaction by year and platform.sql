-- Can we use the avg_transaction column to find the average transaction size for each year for Retail vs Shopify? 
-- If not - how would you calculate it instead?
select calendar_year, platform, round(avg(avg_transaction),2) as avg_transaction_size from clean_weekly_sales
	group by calendar_year, platform
    order by 1,3 asc