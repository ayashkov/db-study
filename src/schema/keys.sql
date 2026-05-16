alter table contact add
    constraint contact$pk primary key (
        person_id,
        type
    )
/

alter table interaction add
    constraint interaction$pk primary key (
        id
    )
/

alter table person add
    constraint person$pk primary key (
        id
    )
/

alter table user add
    constraint user$pk primary key (
        person_id
    )
/

alter table user add
    constraint user$ak$username unique (
        username
    )
/
