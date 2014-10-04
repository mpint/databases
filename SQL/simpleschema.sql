CREATE DATABASE chatbox;

USE chatbox;

CREATE TABLE messages (
  username VARCHAR(20),
  message VARCHAR(142),
  roomname VARCHAR(50)
);

CREATE TABLE users (
  id INTEGER NOT NULL AUTO_INCREMENT,
  username VARCHAR(20),
  PRIMARY KEY (id)
);


-- Which documentation is correct for 5.6?
  -- tutorial, oracle, or schema generator
  -- why don't they match and how can we make them

-- every time we unsuccessfully create a table, we need to erase
-- the database, then restart mysql...is there a workaround?


