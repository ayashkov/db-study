alter table customer add
    constraint customer$fk$person foreign key (
        person_id
    ) references person (
        id
    )
/

alter table interaction add
    constraint interaction$fk$customer foreign key (
        customer_id
    ) references person (
        id
    )
/
