-- What is the total amount each customer spent at the restaurant?

select customer_id,sum(price) as total_amount  from sales
	inner join menu using(product_id)
		group by customer_id