use sql_store;

-- checking autocommit enable or not
-- show variables like "autocommit"

start transaction;

insert into orders (customer_id, order_date, status)
values (1, "2023-10-26", 1);

insert into order_items
values (last_insert_id(), 1, 1, 5);

commit;

