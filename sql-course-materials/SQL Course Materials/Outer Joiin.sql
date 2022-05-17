select
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as Shipper
from orders o
left join customers c -- LEFT: ALL rows in left table , RIGHT: All rows from right table , LEFT OUTER ,RIGHT OUTER : Here OUTER is optional Like INNER 
	on c.customer_id = o.customer_id
left JOIN shippers sh
	ON o.shipper_id=sh.shipper_id
order by c.customer_id;


SELECT 
	p.product_id,
    p.name,
    oi.quantity
FROM  products p 
LEFT JOIN  order_items oi
	ON p.product_id= oi.product_id;

-- ************************************* --  

SELECT 
	o.order_id,
	o.order_date,
    c.first_name as Customer,
    s.name as Shipper,
    os.name as Status
FROM orders o
LEFT JOIN  shippers s
	ON  o.shipper_id = s.shipper_id
LEFT JOIN  customers c
	ON o.customer_id = c.customer_id
LEFT JOIN order_statuses os
	ON  o.status=os.order_status_id
ORDER BY os.name ;


-- SELF  OUTER JOIN --
SELECT 
	e.employee_id,
    e.first_name,
    m.first_name as manager
FROM employees e
LEFT JOIN employees m
	on e.reports_to = m.employee_id
