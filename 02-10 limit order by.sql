select 
*
from orders 
order by customer_id asc , order_date desc 
limit 20

select 
	group_id 
	,round(sum(product_price),2) as total_price
	,round(avg(product_price),2) as avg_price
	,round(min(product_price),2) as min_price
	,round(max(product_price),2) as max_price
from products
group by 1
order by 3 desc 
limit 5

select 
	delivery_city
	,count(distinct customer_id) 	as nr_of_customers
	,count(order_id)				as nr_of_orders
from orders
where 
shipping_mode = 'First Class' 
group by 1
having count(order_id) between 50 and 200 
order by 2 desc 



