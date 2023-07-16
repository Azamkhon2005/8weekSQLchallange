-- How many days on average does it take for a customer to an annual plan from the day they join Foodie-Fi?
with prep as (select customer_id,start_date from subscriptions where plan_id = 3)

select avg(datediff(start_date,real_start_date)) as avg_days_to_annual from (
	select customer_id,min(start_date) as real_start_date from subscriptions
		group by subscriptions.customer_id) as prep1
    inner join prep using(customer_id)