use sql_store2;

drop table if exists orders;

alter table orders 
	-- drop primary key
	-- add primary key (customer_id)
    
	-- drop foreign key fk_orders_customers
    add constraint fk_orders_customers foreign key (customer_id)
		references customers(customer_id)
    

