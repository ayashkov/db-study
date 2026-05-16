alter table contact add
    constraint contact$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/

alter table interaction add
    constraint interaction$fk$user foreign key (
        user_id
    ) references user (
        person_id
    )
/

alter table user add
    constraint user$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/
