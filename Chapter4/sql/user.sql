CREATE USER sailbot IDENTIFIED BY sailbot;

ALTER USER sailbot QUOTA UNLIMITED ON system;

GRANT CREATE PROCEDURE TO sailbot;
GRANT CREATE SEQUENCE TO sailbot;
GRANT CREATE SESSION TO sailbot;
GRANT CREATE TABLE TO sailbot;
GRANT CREATE TYPE TO sailbot;
