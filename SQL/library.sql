CREATE DATABASE library;

USE library;

CREATE TABLE Library_User (
  id INTEGER AUTO_INCREMENT,
  First VARCHAR(25),
  CardNum INTEGER(2),
  Age INTEGER(2),
  Address VARCHAR,
  City CHAR,
  Zip INTEGER(5),
  Balance DECIMAL,
  NumBooksOut INTEGER,
  LifeCheckout INTEGER,
  PRIMARY KEY (id)
);

CREATE TABLE Books (
  id INTEGER  AUTO_INCREMENT,
  Title CHAR(48),
  Author,
  NumCopies INTEGER,
  NumAvail INTEGER,
  PRIMARY KEY (id)
);

CREATE TABLE Books_Out (
  id INTEGER  AUTO_INCREMENT,
  Title CHAR,
  Author CHAR,
  DueDate DATE,
  CheckedOutBy INTEGER,
  PRIMARY KEY (id)
);

