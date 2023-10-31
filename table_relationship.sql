use sql_store2;

drop table if exists orders;
drop table if exists customers;

create table if not exists customers (
	customer_id int primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    birth_date DATE,
    phone varchar(50) not null,
    address varchar(255),
    city varchar(50),
    state char(2),
    points int default 0,
    email varchar(50) not null unique
);

create table if not exists orders
(
	order_id int primary key auto_increment,
    customer_id int not null,
    order_date datetime, 
    
    constraint fk_orders_customers foreign key (customer_id)
		references customers(customer_id)
        on update cascade
        on delete no action
)