create table order_archieved as
select * from orders;


insert into order_archieved
select * 
from orders
where order_date < "2019-01-01";

 -- Update
 
 update invoices 
 set payment_total=10,payment_date="2019-03-01"
 where invoice_id=1