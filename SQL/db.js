var mysql = require('mysql');
// var mysql = require('mysql'); ??????????
/* If the node mysql module is not found on your system, you may
 * need to do an "sudo npm install -g mysql". */

/* You'll need to fill the following out with your mysql username and password.
 * database: "chat" specifies that we're using the database called
 * "chat", which we created by running schema.sql.*/
var dbConnection = mysql.createConnection({
  user: "alexkia",
  password: "alexkia",
  database: "chat"
});

dbConnection.connect();
/* Now you can make queries to the Mysql database using the
 * dbConnection.query() method.
 * See https://github.com/felixge/node-mysql for more details about
 * using this module.*/




exports.findAllMessages = function(cb){
  console.log("db finding all messages");
  dbConnection.query('SELECT message FROM messagesTable', function(err, rows, fields){
    // if(err) throw err;
    console.log('rows in the findAllMessages:', rows);
    console.log('found all messages');
    cb(rows);
  })
};

exports.findUser = function(username, cb){
  dbConnection.query('SELECT name FROM userTable WHERE name = ' + username, function(err, rows, fields){
    // if(err) console.log(err);
    console.log('found user');
    console.log('rows in the findUser:', rows);
    //if no results, results = null
    //if results, give name
    cb(err, rows);
  });
};

exports.saveUser = function(username, cb){
  dbConnection.query('INSERT INTO userTable (name) VALUES (' + username + ')', function(err, rows, fields){
    // if(err) throw err;

    console.log('rows in the saveUser:', rows);
    console.log("just saved the user");
    cb(rows);
    //cb - NEED TO ADD
  });
};

exports.saveMessage = function(message, userid, roomname, cb){
  console.log("db saving messages");
  dbConnection.query('INSERT INTO messagesTable (message, user_id, room_id) VALUES (' + message + ',' + userid + ',' + roomname + ')', function(err, rows, fields){
    if(err) throw err;
    console.log('rows in the saveMessage:', rows);
    console.log("just saved the message");
    cb(rows);
    //cb - NEED TO ADD
  });
};

dbConnection.end();
