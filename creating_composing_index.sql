-- composite indexes

use sql_store;

show indexes in customers;

create index idx_state_points
	on customers (state, points);
    
create index idx_points_state
	on customers (points, state);
    
analyze table customers;