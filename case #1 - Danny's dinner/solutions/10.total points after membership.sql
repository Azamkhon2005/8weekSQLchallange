select sales.customer_id,sum(price*20) as total_points from sales
		inner join members using(customer_id)
        inner join menu using(product_id)
		where order_date>=join_date
	group by sales.customer_id