-- How many days on average are customers reallocated to a different node?

select round(avg(datediff(end_date, start_date)),1) as avg_rellocated from customer_nodes
	where year(end_date) != 9999
	