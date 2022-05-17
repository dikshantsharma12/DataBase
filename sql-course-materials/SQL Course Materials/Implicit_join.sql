-- Implicit Join Syntax

SELECT  * 
FROM  orders o, customers c
WHERE  o.order_id =c.customer_id