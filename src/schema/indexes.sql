create index contact$ix$value on contact (
    value
)
/

create index interaction$ix$contact on interaction (
    person_id,
    type
)
/

create index interaction$ix$occurred on interaction (
    occurred
)
/

create index person$ix$given_name on person (
    given_name
)
/

create index person$ix$family_name on person (
    family_name
)
/

create index person$ix$dob on person (
    dob
)
/
