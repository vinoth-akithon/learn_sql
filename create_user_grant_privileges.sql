use mysql;
show tables;
select * from user;


-- for application
create user vinoth@localhost IDENTIFIED by "veeram12345";

grant select, insert, update, delete
on sql_store.*
to vinoth@localhost;


-- for administrator
create user "admin" identified by "veeram12345";

grant all
on *.*
to "admin";


-- viewing grants
show grants;
show grants for vinoth@localhost;
show GRANTS for "admin";


-- revoking grants
GRANT select
on sql_blog.*
to vinoth@localhost;

revoke select 
on sql_blog.*
from vinoth@localhost;