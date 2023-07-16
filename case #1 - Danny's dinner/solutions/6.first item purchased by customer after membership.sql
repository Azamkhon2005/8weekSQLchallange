select customer_id, product_name from (
	select sales.customer_id, product_id,
	row_number() over(partition by  customer_id order by order_date) as first_time from sales
		inner join members using(customer_id)
		where order_date>=join_date
	) as t1
inner join menu using(product_id)
where first_time = 1
