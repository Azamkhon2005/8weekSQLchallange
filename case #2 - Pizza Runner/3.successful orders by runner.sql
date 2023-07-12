-- How many successful orders were delivered by each runner?

select runner_id,count(order_id) as orders from runner_orders  
	where cancellation is null 
	group by runner_id