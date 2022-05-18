create table order_archieved as
select * from orders;


insert into order_archieved
select * 
from orders
where order_date < "2019-01-01";

 -- Update
 
 update invoices 
 set payment_total=10,payment_date="2019-03-01"
 where invoice_id=1;
 
 update invoices
 set 
	payment_total=invoice_total * 0.5,
    payment_date=due_date
where invoice_id in (1,last_insert_id());

--
use sql_store;
update customers
set 
	points=points+50
where birth_date < "1990-01-01";

update invoices
set 
	payment_total=invoice_total*0.5,
    payment_date=due_date
where client_id In
		(select client_id 
        from clients
        where state in ("CA","NY"))


