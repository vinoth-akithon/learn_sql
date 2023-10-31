use sql_invoicing;

drop procedure if exists get_unpaid_invoices_for_client;

delimiter $$
create procedure get_unpaid_invoices_for_client(
	client_id int,
    out unpaid_count int,
    out unpaid_total int
    )
begin
	select count(*), sum(invoice_total) 
    into unpaid_count, unpaid_total
    from invoices i
	where i.client_id = client_id and payment_total = 0;
end $$
delimiter ;