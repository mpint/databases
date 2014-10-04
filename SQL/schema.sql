CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id INTEGER NOT NULL AUTO_INCREMENT,
  content VARCHAR(20),
  user_id INTEGER,
  room_id INTEGER,
  createdAt TIMESTAMP,
  PRIMARY KEY (id)
);

-- CREATE TABLE rooms (
  -- id INTEGER NOT NULL AUTO_INCREMENT,
  -- roomname VARCHAR,
  -- PRIMARY KEY (id)
-- );

-- CREATE TABLE users (
  -- id INTEGER NOT NULL AUTO_INCREMENT,
  -- username VARCHAR
-- );

-- Which documentation is correct for 5.6?
  -- tutorial, oracle, or schema generator
  -- why don't they match and how can we make them

-- every time we unsuccessfully create a table, we need to erase
-- the database, then restart mysql...is there a workaround?


