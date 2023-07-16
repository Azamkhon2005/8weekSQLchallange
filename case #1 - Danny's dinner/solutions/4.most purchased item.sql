-- What is the most purchased item on the menu and how many times was it purchased by all customers?

select product_name, amount
	from (
		select product_id,count(product_id) as amount from sales
			group by product_id
			order by  amount desc
			limit 1) as t1
	inner join menu using(product_id);