-- What is the unique number of visits by all users per month?

select month(event_time), count(distinct visit_id) as visits from events
	group by month(event_time);