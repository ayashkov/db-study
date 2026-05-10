alter table customer add
    constraint customer$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/
