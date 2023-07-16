-- What plan start_date values occur after the year 2020 for our dataset? Show the breakdown by count of events for each plan_name

select plan_name, count(plan_name) from subscriptions
	inner join plans using(plan_id)
	where year(start_date)>2020
    group by plan_name
    