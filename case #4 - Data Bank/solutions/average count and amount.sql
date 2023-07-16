select avg(c) as avg_counts,avg(s) as avg_amount 
		from (
			select customer_id, count(customer_id) as c, avg(txn_amount) as s from customer_transactions
				where txn_type = 'deposit'
				group by customer_id) as t1