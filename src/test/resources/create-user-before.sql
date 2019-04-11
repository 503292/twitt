delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$jIWFMUOsGHGwZbgiZ/s0ce3Rk0G/O/suopdLHyE5MKPnnhRvWeViC', '1'),
(2, true, '$2a$08$jIWFMUOsGHGwZbgiZ/s0ce3Rk0G/O/suopdLHyE5MKPnnhRvWeViC', '2');

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'ADMIN')