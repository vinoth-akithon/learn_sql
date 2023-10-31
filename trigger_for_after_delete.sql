use sql_invoicing;

drop trigger if exists payments_after_delete

delimiter $$
create trigger payments_after_delete
	after delete on payments
    for each row
begin
	update invoices i
    set payment_total = payment_total - old.amount
    where i.invoice_id = old.invoice_id;
end $$
delimiter ;