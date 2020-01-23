delete from user_role;
delete from usr;
DROP SEQUENCE id_seq_test;

insert into usr(id, username, password, active) values
(1, 'dru', '$2a$08$fNUHI3FnO3cbT6VAcClJOOsIq93f2101ud2RAKiZFAh7Y2h.oFRzC', true),
(2, 'mike', '$2a$08$fNUHI3FnO3cbT6VAcClJOOsIq93f2101ud2RAKiZFAh7Y2h.oFRzC', true);

CREATE SEQUENCE id_seq_test;
ALTER TABLE usr ALTER COLUMN id SET DEFAULT nextval('id_seq_test');

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');