-- What is the percentage of visits which view the checkout page but do not have a purchase event?

with prep as (select count(distinct t1.visit_id) as visits from (
	select visit_id from events where event_type = 1) as t1
    left join (select visit_id from events where event_type = 3) as t2
    using(visit_id)
    where t2.visit_id is null)
select round((select * from prep) / count(distinct visit_id)*100,2) as percentage from events;