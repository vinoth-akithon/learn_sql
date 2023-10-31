use sql_invoicing;

drop procedure get_payments;

delimiter $$
create procedure get_payments(client_id int, payment_method_id tinyint)
begin
	-- if (client_id is null) and (payment_method_id is null) then
-- 		select * from payments;
-- 	elseif (client_id is null) and (payment_method_id is not null) then
-- 		select * from payments where payment_method = payment_method_id;
-- 	elseif (client_id is not null) and (payment_method_id is null) then
-- 		select * from payments p where p.client_id = client_id;
-- 	else
-- 		select * from payments p where (p.client_id = client_id) and (p.payment_method = payment_method_id);
-- 	end if;
	select * from payments p 
	where 
		p.client_id = ifnull(client_id, p.client_id) and
        p.payment_method = ifnull(payment_method_id, p.payment_method);
end $$
delimiter ;