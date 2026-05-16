alter table contact add
    constraint contact$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/

alter table interaction add
    constraint interaction$fk$contact foreign key (
        person_id,
        type
    ) references contact (
        person_id,
        type
    )
/

alter table user add
    constraint user$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/
