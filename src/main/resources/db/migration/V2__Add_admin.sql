insert into usr (id, username, password, active)
    values (1, 'admin', '$2a$08$IJP.HY2VcucefnQ/rW.vyej6Eyi.nGA.f3kk2EaBGQ3Q0wZ.X7CNu', true);

insert into user_role (user_id, roles)
    values (1, 'USER'), (1, 'ADMIN');


