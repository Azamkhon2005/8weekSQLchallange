-- What is the number and percentage of customer plans after their initial free trial?

select plan_id2,count(plan_id2) as amount,round(count(plan_id2)/1000*100,1) as percentage from (
	select customer_id,plan_id,start_date,
			lead(plan_id) over(partition by customer_id order by start_date) as plan_id2 from subscriptions) as t1
	where plan_id = 0
    group by plan_id2