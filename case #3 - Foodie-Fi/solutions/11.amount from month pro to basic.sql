select count(customer_id) as amount from (
	select customer_id,plan_id,start_date,
				lead(plan_id) over(partition by customer_id order by start_date) as plan_id2 from subscriptions) as t1
	where plan_id = 2 and plan_id2 = 1 and year(start_date) = 2020