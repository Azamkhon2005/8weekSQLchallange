-- Which item was the most popular for each customer?

select customer_id, product_name, amount from (
		select customer_id, product_id, count(product_id) as amount,
        row_number() over( partition by customer_id order by  count(product_id) desc ) as rank_
		 from sales
			group by customer_id, product_id
			order by customer_id, amount desc) as t1
	inner join menu using(product_id)
    where rank_ = 1;
