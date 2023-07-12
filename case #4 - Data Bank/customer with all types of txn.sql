with prep1 as (
select customer_id,month(txn_date) as mo, count(txn_type) as deposit from customer_transactions
	where txn_type = 'deposit'
    group by customer_id,month(txn_date)
    having deposit>1),
prep2 as (
select customer_id,month(txn_date) as mo, count(txn_type) as purchase from customer_transactions
	where txn_type = 'purchase'
    group by customer_id,month(txn_date)),
prep3 as (
select customer_id,month(txn_date) as mo, count(txn_type) as withdrawal from customer_transactions
	where txn_type = 'withdrawal'
    group by customer_id,month(txn_date))

select mo, count(distinct customer_id) as customer_count from (
		select prep1.customer_id, prep1.mo, deposit, purchase, withdrawal from prep1
			left join prep2 on prep1.customer_id = prep2.customer_id and prep1.mo = prep2.mo
			left join prep3 on prep1.customer_id = prep3.customer_id and prep1.mo = prep3.mo
			where  withdrawal is not null or purchase is not null) as t1
	group by mo
    order by mo asc