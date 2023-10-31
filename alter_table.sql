use sql_store2;

alter table customers 
	-- add country varchar(50) after state,
    modify state char(2),
    -- drop email;
    add email varchar(50) not null unique;
