alter table contact add
    constraint contact$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/

alter table customer add
    constraint customer$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/
