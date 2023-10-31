-- Trigger

use sql_invoicing;

drop trigger if exists payments_after_insert;

delimiter $$
create trigger payments_after_insert
	after insert on payments
    for each row
begin
	update invoices i
	set payment_total = payment_total + new.amount
    where i.invoice_id = new.invoice_id;
    
    -- Auditing purpose
    insert into payments_audit
    values (default, new.payment_id, "Insert", now());
end $$
delimiter ;