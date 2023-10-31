use sql_store;

select * from customers;

explain select customer_id 
from customers 
where state = "ca";

create index idx_state
	on customers (state);
    
drop index idx_state
 on customers;
 

explain select 
	customer_id
from customers
where points > 1000;


create index idx_points
	on customers (points);
    
show indexes from customers;
-- show index in customers;


explain select
	*
from customers c
where c.customer_id = 5;