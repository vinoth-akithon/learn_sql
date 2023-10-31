use sql_invoicing;


drop procedure make_payment;

delimiter $$
create procedure make_payment(
	payment_id int, 
    payment_amount double(9, 2),
    payment_date date)
begin
	-- parameter validation
	if payment_amount <= 0 then 
		signal sqlstate "22003"
			set message_text = "Invalid payment_amount";
	end if;
    
	update payments p
		set p.amount = payment_amount,
			p.date = payment_date
	where p.payment_id = payment_id;
end$$
delimiter ;