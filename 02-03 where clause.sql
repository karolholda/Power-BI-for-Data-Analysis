select 
	alias.*
	,case 
		when alias.ilosc_zam = 1 then 'Nowy Klienciak'
		when alias.ilosc_zam > 1 and alias.ilosc_zam  < 5 then 'Regular'
		when alias.ilosc_zam >= 5 and alias.ilosc_zam  < 10 then 'Jebany Bankrut'
		else 'Zjeb'
	end as typ_klienta
from 
(
select 
	customer_id			as id_klienta
	,count(order_id)  as ilosc_zam
from orders  
group by 1
) alias
order by 2 desc