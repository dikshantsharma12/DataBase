select *,quantity * unit_price as Total from order_items order by Total   DESC limit 3;

select order_id ,o.customer_id,first_name
from orders o
join customers c
 on o.customer_id=c.customer_id;
 
 
 select order_id, p.product_id,quantity,oi.unit_price
 from order_items oi 
 join products p
 on oi.product_id = p.product_id