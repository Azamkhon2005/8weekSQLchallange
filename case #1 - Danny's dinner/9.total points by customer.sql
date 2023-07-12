select customer_id,sum(points) as total_points from(
	select customer_id,price,
	case 
		when product_name = 'sushi' then price*20
		else price * 10
		end as points
	from sales
	left join menu using(product_id) ) as t1
group by customer_id