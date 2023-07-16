-- What is the median, 80th and 95th percentile for this same reallocation days metric for each region?

select region_id, days,
	case when row_ = first_per then '85th percentile'
	when row_ = second_per then '90th percentile'
	end as percentiges
	from (
		select region_id, datediff(end_date, start_date) as days, 
			row_number() over(partition by region_id order by  datediff(end_date, start_date) asc) as row_,
			round(count(region_id) over(partition by region_id) * 0.8) as first_per ,
			round(count(region_id) over(partition by region_id) * 0.95) as second_per 
				from customer_nodes
			where year(end_date) != 9999
			order by region_id asc) as prep
where row_ = first_per or row_ = second_per