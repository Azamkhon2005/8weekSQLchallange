select distinct week_number from clean_weekly_sales where week_date = '2020-06-15';

with prep1 as (
select sum(sales) as before4week_sales from clean_weekly_sales where week_number-24<=4
	and week_number-24>0 and calendar_year = 2020),
prep2 as (select sum(sales) as after4week_sales from clean_weekly_sales where week_number-24>-4 and 
	week_number-24<=0 and calendar_year = 2020)
    
select before4week_sales,after4week_sales,after4week_sales-before4week_sales, 
	round((after4week_sales-before4week_sales)/before4week_sales*100,2)from prep1 join prep2