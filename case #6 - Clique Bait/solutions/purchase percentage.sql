-- What is the percentage of visits which have a purchase event?
select 
round((select count(distinct visit_id) from events where event_type = 3)/ count(distinct visit_id)*100,2) as purchase_percentage from events;