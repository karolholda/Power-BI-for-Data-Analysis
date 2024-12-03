select 
	group_id 
	,round(sum(product_price),2) as total_price
	,round(avg(product_price),2) as avg_price
	,round(min(product_price),2) as min_price
	,round(max(product_price),2) as max_price
from products
group by 1


select 
	delivery_state
	,max(order_date) as last_order
	,min(order_date) as first_order
from orders 
group by 1


select 
	group_id 
	,round(sum(product_price),2)
from products
group by 1
	


