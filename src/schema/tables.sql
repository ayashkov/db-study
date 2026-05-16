create table customer (
    person_id integer not null,
    username varchar(32) not null
)
/

create table interaction (
    id integer not null,
    customer_id integer not null,
    occurred timestamp not null,
    summary clob not null
)

create table person (
    id integer not null,
    name varchar(256) not null,
    email varchar(256) not null,
    phone varchar(16),
    dob date
)
/
