-- What is the customer count and percentage of customers who have churned rounded to 1 decimal place?

with prep as (select count(distinct customer_id) as churned   from subscriptions where plan_id = 4)

select round((select churned from prep)/count(distinct customer_id)*100,1) as churn_percentage, (select churned from prep) as total_count  from subscriptions