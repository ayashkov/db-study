create table contact /* $1a73af9e */ (
    person_id /* $36473741 */ integer not null,
    type /* $9d87763f */ char(1) not null check (type in ('E', 'P', 'M', 'W', 'H')),
    value /* $9513de58 */ varchar(256) not null
)
/

create table user /* $b39f008e */ (
    person_id /* $e0a5ac31 */ integer not null,
    username /* $b57055ca */ varchar(32) not null
)
/

create table person /* $d39a4750 */ (
    id /* $a849426a */ integer not null,
    given_name /* $c66ac306 */ varchar(128) not null,
    family_name /* $0dca8fb7 */ varchar(128) not null,
    dob /* $1f386cbc */ date
)
/

create table interaction /* $fd60a1db */ (
    id /* $22c4a812 */ integer not null,
    person_id /* $3e356ecb */ integer not null,
    type /* $8820b7bb */ char(1) not null,
    occurred /* $3dc0d975 */ timestamp not null,
    summary /* $bb27b1af */ clob not null
)
/
