alter table customer add
    constraint customer$pk primary key (
        person_id
    )
/

alter table customer add
    constraint customer$ak$username unique (
        username
    )
/

alter table person add
    constraint person$pk primary key (
        id
    )
/

alter table person add
    constraint person$ak$email unique (
        email
    )
/
