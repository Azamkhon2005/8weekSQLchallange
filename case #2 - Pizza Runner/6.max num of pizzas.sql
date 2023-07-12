-- What was the maximum number of pizzas delivered in a single order?

select order_id,count(order_id) as total_pizzas from customer_orders
	where order_id not in (select order_id from runner_orders where cancellation is not null)
    group by order_id
    order by 2 desc
    limit 1