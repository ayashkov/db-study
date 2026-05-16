-- $d39a4750:
--   columns:
--     $0f076a27:
--       name: phone
--       type: varchar(16)

alter table person rename to $d39a4750
/

create table person (
    id integer not null,
    name varchar(256) not null,
    email varchar(256) not null,
    phone varchar(16),
    dob date
)
/

insert into person (
    id,
    name,
    email,
    dob
)
select
    id,
    name,
    email,
    dob
from $d39a4750
/

drop table $d39a4750
/
