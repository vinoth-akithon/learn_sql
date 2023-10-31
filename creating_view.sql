use sql_invoicing;

drop view if exists get_client_basic_details;

create view get_client_basic_details as 
	select 
		client_id,
        name as client_name
	from clients;
    
    
select * from get_client_basic_details