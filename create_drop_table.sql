create database if not exists sql_store2;

use sql_store2;

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
    )