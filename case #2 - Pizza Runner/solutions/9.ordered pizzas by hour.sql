-- What was the total volume of pizzas ordered for each hour of the day?

select hour(order_time) as ordered_hour,count(order_id) as total_pizzas from customer_orders
	where order_id not in (select order_id from runner_orders where cancellation is not null)
    group by ordered_hour
    order by ordered_hour asc