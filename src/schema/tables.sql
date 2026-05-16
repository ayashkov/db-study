create table contact (
    person_id integer not null,
    type char(1) not null check (type in ('E', 'P', 'M', 'W', 'H')),
    value varchar(256) not null
)
/

create table interaction /* $fd60a1db */ (
    id /* $22c4a812 */ integer not null,
    person_id /* $3e356ecb */ integer not null,
    type char(1) not null,
    occurred /* $3dc0d975 */ timestamp not null,
    summary /* $bb27b1af */ clob not null
)
/

create table person /* $d39a4750 */ (
    id /* $a849426a */ integer not null,
    given_name varchar(128) not null,
    family_name /* $0dca8fb7 */ varchar(128) not null,
    dob /* $1f386cbc */ date
)
/

create table user /* $b39f008e */ (
    person_id /* $e0a5ac31 */ integer not null,
    username /* $b57055ca */ varchar(32) not null
)
/
