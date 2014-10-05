var Sequelize = require("sequelize");

var sequelize = new Sequelize("chat", "AlexKia", "");

var User = sequelize.define('User', {
  username: Sequelize.STRING
});

var Message = sequelize.define('Message' {
  userid: Sequelize.INTEGER,
  text: Sequelize.STRING,
  roomname: Sequelize.STRING
});


exports.findAllMessages = function(cb){
};

exports.findUser = function(username, cb){
  User
    .find({ where: {username: username} })
    .complete(function(err, ))
};

exports.saveUser = function(username, cb){
};

exports.saveMessage = function(message, userid, roomname, cb){
};

