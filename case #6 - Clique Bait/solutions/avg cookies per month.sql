-- How many cookies does each user have on average?

select round(count(distinct cookie_id)/count(distinct user_id),2) as avg_cookies from users