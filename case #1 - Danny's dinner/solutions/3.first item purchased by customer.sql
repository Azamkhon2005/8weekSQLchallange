-- What was the first item from the menu purchased by each customer?

select customer_id, product_name from (
	select customer_id, product_id,
		row_number() over(partition by  customer_id order by order_date) as first_time
		from sales) as t1
inner join menu using(product_id)
where first_time = 1