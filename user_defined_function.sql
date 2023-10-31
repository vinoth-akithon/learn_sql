-- Use defined function

use sql_invoicing;

drop function if exists get_client_id;

delimiter $$
create function get_client_id(invoice_id int)
returns int

-- should alteast one attributes
-- deterministic
-- modifies sql date
reads sql data
 
begin
	declare client_id int;
    
	select i.client_id into client_id 
    from invoices i
	where i.invoice_id = invoice_id;
    
    return client_id;
end$$
delimiter ;