use sql_store;

-- view

create or replace view order_and_its_customer as
	select 
		order_id,
        customer_id,
        concat_ws(" ", first_name, last_name) as customer_name,
        status as order_status
	from orders
    join customers
		using (customer_id)