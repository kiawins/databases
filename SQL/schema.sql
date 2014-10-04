DROP DATABASE IF EXISTS chat;

CREATE DATABASE chat;

USE chat;

DROP TABLE IF EXISTS messageTable;
DROP TABLE IF EXISTS chatroomTable;
DROP TABLE IF EXISTS userTable;

CREATE TABLE userTable (
  id int(10) not null auto_increment,
  name varchar(64),
  primary key(ID)
);

CREATE TABLE chatroomTable (
  id int(10) not null auto_increment,
  name varchar(64),
  primary key(ID)
);

CREATE TABLE messagesTable (
  id int(10) not null auto_increment,
  dateCreated DATETIME(6),
  message text(255),
  user_id int,
  room_id int,
  primary key(ID),
  foreign key(user_id) references userTable(ID),
  foreign key(room_id) references chatroomTable(ID)
);
