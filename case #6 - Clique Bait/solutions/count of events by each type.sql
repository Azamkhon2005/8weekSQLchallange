-- What is the number of events for each event type?

select event_name, count(event_name) as amount  from events
	inner join event_identifier using(event_type)
    group by event_name