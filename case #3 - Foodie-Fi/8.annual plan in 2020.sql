-- How many customers have upgraded to an annual plan in 2020?

select count(distinct customer_id) as amount from subscriptions where year(start_date) = 2020 and plan_id = 3