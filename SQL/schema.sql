DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS chatroomTable;
DROP TABLE IF EXISTS userTable;
DROP TABLE IF EXISTS messageTable;

CREATE TABLE userTable (
  id int(10) not null auto_increment,
  messages int(10),
  name varchar(64),
  primary key(ID)
);

CREATE TABLE messagesTable (
  id int(10) not null auto_increment,
  dateCreated DATETIME(6),
  message text(255),
  user int,
  primary key(ID),
  foreign key(user) references userTable(ID)
);

CREATE TABLE chatroomTable (
  id int(10) not null auto_increment,
  messages int,
  name varchar(64),
  primary key(ID),
  foreign key(messages) references messagesTable(ID)
);
