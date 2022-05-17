use sql_invoicing;

select 
	c.name as Name,
    c.state as State,
    p.date as Date,
    p.amount as Amount,
    pm.name as "Payment Method"
    
from payments p
join clients c
	on p.client_id = c.client_id
join payment_methods pm
	on p.payment_method = pm.payment_method_id