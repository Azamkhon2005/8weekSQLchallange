select sales.customer_id, count(product_name) as total_items ,sum(price) as amount_spent from sales
		inner join members using(customer_id)
        inner join menu using(product_id)
		where order_date<join_date
        group by sales.customer_id