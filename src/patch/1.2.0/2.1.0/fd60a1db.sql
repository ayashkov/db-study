-- $fd60a1db:
--   columns:
--     $3e356ecb:
--       name: person_id
--       type: integer
--       required: true
--     $8820b7bb:
--       name: type
--       type: char(1)
--       required: true

alter table interaction rename to $fd60a1db
/

create table interaction (
    id integer not null,
    person_id integer not null,
    type char(1) not null,
    occurred timestamp not null,
    summary clob not null
)
/

insert into interaction (
    id,
    person_id,
    type,
    occurred,
    summary
)
select
    id,
    customer_id as person_id,
    'E' as type,
    occurred,
    summary
from $fd60a1db
/

drop table $fd60a1db
/
