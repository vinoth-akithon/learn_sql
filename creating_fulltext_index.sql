-- fulltext index

use sql_blog;

create fulltext index idx_title_body
	on posts (title, body);
    
show indexes in posts;

drop index idx_title_body on posts;

explain select * from posts where MATCH(title, body) against("react");

-- natual mode search
select 
	title, 
    body, 
    MATCH(title, body) against("react") as relavance
from posts
where match(title, body) against ("react redux")
order by relavance desc;

-- boolean mode search
select 
	title,
    body,
    match(title, body) against ("react" in boolean mode) as relavance
from posts
where match(title, body) against ('react -redux +form' in boolean mode);
