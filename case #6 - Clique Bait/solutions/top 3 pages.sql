-- What are the top 3 pages by number of views?

select page_name, count(page_name) as amount from events
	inner join page_hierarchy using(page_id)
    group by page_name
    order by amount desc
    limit 3;