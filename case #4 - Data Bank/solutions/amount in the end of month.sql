select *,
case when txn_type = 'purchase' or txn_type='withdrawal' then txn_amount * -1
else txn_amount end as amount

 from customer_transactions
	order by customer_id,txn_date