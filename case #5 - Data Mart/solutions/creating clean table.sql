create table clean_weekly_sales as 
	select  str_to_date(week_date,'%d/%m/%Y') as week_date,
			week(str_to_date(week_date,'%d/%m/%Y')) as week_number,
			month(str_to_date(week_date,'%d/%m/%Y')) as month_number,
			year(str_to_date(week_date,'%d/%m/%Y'))  as calendar_year,
			case when substring(segment,1,1) = 'C' then "Couples"
				 when substring(segment,1,1) = 'F' then "Families"
				 else "unknown" end as demographic,
			case when substring(segment,2,2) = '1' then "Young Adults"
				when substring(segment,2,2) = '2' then "Middle Aged"
				when substring(segment,2,2) = '3' or substring(segment,2,2) = '4' then "Retirees"
				else 'unknown' end as age_band ,
			round(sales/transactions,2) as avg_transaction,
			region,
			platform,
			customer_type,
			transactions,
			sales
		from weekly_sales;