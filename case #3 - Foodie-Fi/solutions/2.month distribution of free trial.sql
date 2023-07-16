-- What is the monthly distribution of trial plan start_date values for our dataset - use the start of the month as the group by value

select month(start_date) as month_sub, count(customer_id) from subscriptions where plan_id=0
	group by 1
    order by 1 asc