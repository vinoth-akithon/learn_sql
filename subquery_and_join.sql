use sql_store;


-- select
-- 	distinct customer_id,
--     first_name,
--     last_name
-- from orders o
-- join customers c
-- 	using (customer_id)
-- where o.order_id in (
-- 	select 
-- 		order_id
-- 	from order_items oi
-- 	where oi.product_id = 3
-- )

-- select 
-- 	distinct customer_id,
--     first_name,
--     last_name
-- from customers c
-- join orders o 
-- 	using (customer_id)
-- join order_items oi
-- 	using (order_id)
-- where oi.product_id = 3

-- select 
-- 	customer_id,
--     first_name,
--     last_name
-- from customers c
-- where c.customer_id in (
-- 	select 
-- 		customer_id
-- 	from orders
--     join order_items
-- 		using (order_id)
-- 	where product_id = 3
-- )
