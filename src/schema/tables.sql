create table contact (
    person_id integer not null,
    type char(1) not null check (type in ('E', 'P', 'M', 'W', 'H')),
    value varchar(256) not null
)
/

create table interaction (
    id integer not null,
    person_id integer not null,
    type char(1) not null,
    occurred timestamp not null,
    summary clob not null
)
/

create table person (
    id integer not null,
    given_name varchar(128) not null,
    family_name varchar(128) not null,
    dob date
)
/

create table user (
    person_id integer not null,
    username varchar(32) not null
)
/
