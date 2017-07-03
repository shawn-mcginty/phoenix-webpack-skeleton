DROP DATABASE change_me;
CREATE DATABASE change_me;
CREATE USER change_me WITH PASSWORD 'change_me';
GRANT ALL PRIVILEGES ON DATABASE change_me to change_me;