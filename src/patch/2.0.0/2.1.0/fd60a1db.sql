-- $fd60a1db:
--   name: interaction
--   columns:
--     $22c4a812:
--       name: id
--       type: integer
--       required: true
--     $3e356ecb:
--       name: person_id
--       type: integer
--       required: true
--     $8820b7bb:
--       name: type
--       type: char(1)
--       required: true
--     $3dc0d975:
--       name: occurred
--       type: timestamp
--       required: true
--     $bb27b1af:
--       name: summary
--       type: clob
--       required: true

create table interaction (
    id integer not null,
    person_id integer not null,
    type char(1) not null,
    occurred timestamp not null,
    summary clob not null
)
/
