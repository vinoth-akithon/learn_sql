use sql_invoicing;

-- getting available event list for the current database
-- show events;

drop event if exists minutely_insert_audit_row;

delimiter $$
create event minutely_insert_audit_row
on schedule 
	every 0.5 minute starts "2023-10-26" ends "2023-10-27" 
do begin
	insert payments_audit
    value (default, 14, "Event", now());
end $$
delimiter ;