CREATE DATABASE database_login;

USE database_login;

CREATE TABLE users(
    id INT(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY (id);

-- ALTER TABLE users
--  CHANGE id INT(11) NOT NULL AUTO_INCREMENT = 2;   


-- DESCRIBE users;

CREATE TABLE gente (
    name TEXT NOT NULL,
    segment1 BOOLEAN,
    segment2 BOOLEAN,
    segment3 BOOLEAN,
    segment4 BOOLEAN,
    platformId INT NOT NULL,
    clientId INT NOT NULL
);

-- DESCRIBE gente;

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Ricardo', '1', '0', '0', '1', '1', '2');

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Romina', '1', '1', '1', '1', '2', '3');

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Joaquin', '0', '0', '0', '1', '4', '4');

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Lucia', '0', '0', '1', '1', '10', '1');

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Alejandro', '1', '0', '0', '1', '1', '3');

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Alicia', '1', '1', '1', '1', '5', '3'); 

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Joaquin', '0', '0', '1', '0', '5', '4'); 

INSERT INTO gente(name, segment1, segment2, segment3, segment4, platformId, clientId) values ('Lucia', '1', '1', '1', '1', '10', '1');
