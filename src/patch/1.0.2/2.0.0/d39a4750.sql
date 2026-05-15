-- $1a73af9e:
--   name: contact
--   columns:
--     $36473741:
--       name: person_id
--       type: integer
--       required: true
--     $9d87763f:
--       name: type
--       type: char(1)
--       required: true
--       check: in ('E', 'P', 'M', 'W', 'H')
--     $9513de58:
--       name: value
--       type: varchar(256)
--       required: true
--
-- $d39a4750:
--   name: person
--   columns:
--     $c66ac306:
--       name: given_name
--       type: varchar(128)
--       required: true
--     $0dca8fb7:
--       name: family_name
--       type: varchar(128)
--       required: true

alter table person rename to $d39a4750
/

create table contact (
    person_id integer not null,
    type char(1) not null check (type in ('E', 'P', 'M', 'W', 'H')),
    value varchar(256) not null
)
/

create table person (
    id integer not null,
    given_name varchar(128) not null,
    family_name varchar(128) not null,
    dob date
)
/

insert into contact (
    person_id,
    type,
    value
)
select
    id as person_id,
    'E' as type,
    email as value
from $d39a4750
/

insert into person (
    id,
    given_name,
    family_name,
    dob
)
select
    id,
    util.to_given_name(name) as given_name,
    util.to_family_name(name) as family_name,
    dob
from $d39a4750
/

drop table $d39a4750
/
