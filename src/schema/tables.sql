create table customer (
    person_id integer not null,
    username varchar(32) not null
)
/

create table person (
    id integer not null,
    name varchar(128) not null,
    email varchar(128),
    dob date
)
/
