create index interaction$ix$customer on interaction (
    customer_id
)
/

create index interaction$ix$occurred on interaction (
    occurred
)
/

create index person$ix$name on person (
    name
)
/

create index person$ix$dob on person (
    dob
)
/
