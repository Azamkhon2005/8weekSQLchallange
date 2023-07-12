-- How many customers have churned straight after their initial free trial - what percentage is this rounded to the nearest whole number?

select count(distinct customer_id) as amount,round(count(distinct customer_id)/(select count(distinct customer_id) from subscriptions)*100,1) as percentage  from (
	select customer_id,plan_id,start_date,
		lead(plan_id) over(partition by customer_id order by start_date) as plan_id2 from subscriptions) as t1
	where plan_id = 0 and plan_id2 = 4