-- How many of each type of pizza was delivered?

select pizza_id,count(pizza_id) as ordered_count from customer_orders
	where order_id not in (select order_id from runner_orders where cancellation is not null)
    group by pizza_id