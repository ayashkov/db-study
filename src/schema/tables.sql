create table customer /* $b39f008e */ (
    person_id /* $e0a5ac31 */ integer not null,
    username /* $b57055ca */ varchar(32) not null
)
/

create table interaction /* $fd60a1db */ (
    id /* $22c4a812 */ integer not null,
    customer_id /* $3e356ecb */ integer not null,
    occurred /* $3dc0d975 */ timestamp not null,
    summary /* $bb27b1af */ clob not null
)
/

create table person /* $d39a4750 */ (
    id /* $a849426a */ integer not null,
    name /* $0dca8fb7 */ varchar(256) not null,
    email /* $3e0ee234 */ varchar(256) not null,
    phone /* $0f076a27 */ varchar(16),
    dob /* $1f386cbc */ date
)
/
