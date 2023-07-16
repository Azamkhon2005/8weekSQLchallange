-- What is the number of views and cart adds for each product category?

with prep as (
select t1.visit_id as visit1, t2.visit_id as visit2 from (
	select visit_id from events where event_type = 1) as t1
    left join (select visit_id from events where event_type = 2) as t2
    using(visit_id))
select product_category, count(visit1) as view_count, count(visit2) as cart_add_count from prep
	inner join page_hierarchy on page_hierarchy.page_id = prep.visit1
    group by product_category
    having product_category is not null;