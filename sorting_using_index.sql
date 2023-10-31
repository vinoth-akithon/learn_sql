use sql_store;

show indexes in customers;

drop index idx_points_state on customers;

explain select customer_id from customers
order by state;
show status like "%cost%";

explain select customer_id from customers
order by first_name;
show status like "%cost%";

explain select customer_id from customers
order by state, points;
show status like "last_query_cost";


explain select customer_id from customers
order by state, points desc;
show status like "last_query_cost";

explain select customer_id from customers
order by state desc , points;
show status like "last_query_cost";

explain select customer_id from customers
order by state desc , points desc;
show status like "last_query_cost";
