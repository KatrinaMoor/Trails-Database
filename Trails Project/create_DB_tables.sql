--1. drop all tables
DROP TABLE IF EXISTS park;
DROP TABLE IF EXISTS trail;
DROP TABLE IF EXISTS complete;


--2 create all tables
CREATE TABLE park
(
        park_id serial NOT NULL PRIMARY KEY
        , park_name VARCHAR(80) NOT NULL
        , reservation VARCHAR(80)
        , location VARCHAR(80) NOT NULL
);

CREATE TABLE trail
(
        trail_id integer NOT NULL PRIMARY KEY
        , park_id integer NOT NULL
        , reservation VARCHAR(80)
        , trail_name VARCHAR(50) NOT NULL
        , milage decimal NOT NULL
        , difficulty VARCHAR(20) 
        , trail_surface VARCHAR(20)     
);

CREATE TABLE complete
(
        complete_id integer NOT NULL PRIMARY KEY
        , trail_id integer NOT NULL
        , complete_date date NOT NULL
        , rating integer
        , weather_conditons VARCHAR(20) 

);

-- 3. add relationships
ALTER TABLE trail
ADD CONSTRAINT fk_park_id
FOREIGN KEY (park_id)
REFERENCES park (park_id);

ALTER TABLE complete
ADD CONSTRAINT fk_trail_id
FOREIGN KEY (trail_id)
REFERENCES trail (trail_id);

