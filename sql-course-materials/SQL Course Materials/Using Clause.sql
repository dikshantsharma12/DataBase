select 
	o.order_id,
    c.first_name,
    sh. name as shipper
from orders o
join customers c
	using (customer_id) -- Eleminate the use of ON clause which syntax is longer to write 
left join shippers sh
	using (shipper_id);
    
-- When cloumns name is not same

select * 
from order_items oi
join order_item_notes oin
	using (orderid,product_id);
    
-- **************--  
SELECT 
	p.date,
    c.name as client,
    p.amount,
    pm.name as Payment_method
    
	
FROM payments p
join payment_methods pm
	on p.payment_method=pm.payment_method_id
join clients c
	using (client_id)